OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_8 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9_2 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9_3 >> ddr

OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_8 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9_2 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9_3 >> ddr

OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_8 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9_2 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9_3 >> mcdram

OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_8 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9_2 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9_3 >> mcdram_p
