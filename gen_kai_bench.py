import os

shape = """
32 2048 512
32 2048 32
32 32 512

32 2048 2048
32 2048 32
32 32 2048

512 128 2048
32 32 2048

32 2048 9216
32 2048 32
32 32 9216

32 9216 2048
32 9216 32
32 32 2048

512 512 2048

32 2048 32
"""

ben_exec = ["build_sme_t1", "build_sme_t4"]

shapes = [ss.split(" ") for ss in set([s.strip() for s in shape.split("\n") if s.strip() != ""])]

cmds = []
for exec in ben_exec:
    for shape in shapes:
        cmd = f"/Users/kirin/Project/sme2/kleidiai/{exec}/kleidiai_benchmark matmul -m {shape[0]} -n {shape[2]} -k {shape[1]} " \
            f"--benchmark_repetitions=5 --benchmark_time_unit=ms --benchmark_report_aggregates_only=false " \
            f"--benchmark_out_format=json --benchmark_out=m{shape[0]}k{shape[1]}n{shape[2]}_{exec}.json " \
            f"--benchmark_counters_tabular=true"
        cmds.append(cmd)
        cmds.append("sleep 10")
        
for exec in ben_exec:
    for shape in [[32, 2048, 153376], [32, 32, 153376]]:
        cmd = f"/Users/kirin/Project/sme2/kleidiai/{exec}/kleidiai_benchmark matmul -m {shape[0]} -n {shape[2]} -k {shape[1]} " \
            f"--benchmark_repetitions=5 --benchmark_time_unit=ms --benchmark_report_aggregates_only=false " \
            f"--benchmark_out_format=json --benchmark_out=m{shape[0]}k{shape[1]}n{shape[2]}_{exec}.json " \
            f"--benchmark_counters_tabular=true"
        cmds.append(cmd)
        cmds.append("sleep 10")
        
with(open("kai_bench.sh", "w", encoding="utf-8") as f):
    f.write("\n".join(cmds[:-1]))
    
os.chmod("kai_bench.sh", 0o755)
