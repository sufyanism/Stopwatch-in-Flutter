

import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  final Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  final List<Duration> _laps = [];

  void _start() {
    if (_stopwatch.isRunning) return;
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(milliseconds: 30), (_) => setState(() {}));
  }

  void _stop() {
    if (!_stopwatch.isRunning) return;
    _stopwatch.stop();
    _timer?.cancel();
    setState(() {});
  }

  void _reset() {
    _stopwatch.reset();
    _timer?.cancel();
    _laps.clear();
    setState(() {});
  }

  void _lap() {
    if (_stopwatch.isRunning) {
      _laps.insert(0, _stopwatch.elapsed);
      setState(() {});
    }
  }

  String _formatTime(Duration d) {
    final hours = d.inHours;
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    final centis = (d.inMilliseconds.remainder(1000) ~/ 10).toString().padLeft(2, '0');
    return hours > 0 ? '$hours:$minutes:$seconds.$centis' : '$minutes:$seconds.$centis';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final elapsed = _stopwatch.elapsed;
    final isRunning = _stopwatch.isRunning;

    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              _formatTime(elapsed),
              style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isRunning ? _lap : _reset,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isRunning ? Colors.grey[200] : Colors.red,
                    foregroundColor: isRunning ? Colors.black : Colors.white,
                  ),
                  child: Text(isRunning ? 'Lap' : 'Reset'),
                ),
                ElevatedButton(
                  onPressed: isRunning ? _stop : _start,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isRunning ? Colors.orange : Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(isRunning ? 'Stop' : 'Start'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: _laps.isEmpty
                  ? const Center(child: Text('No laps yet'))
                  : ListView.builder(
                itemCount: _laps.length,
                itemBuilder: (context, index) {
                  final lapTime = _laps[index];
                  return ListTile(
                    leading: Text('Lap ${_laps.length - index}'),
                    trailing: Text(_formatTime(lapTime)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
