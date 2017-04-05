# Part 1
# Cache mode
for i in 8 16 32 64 128 256; do OMP_NUM_THREADS=$i srun --reservation=knl --account=courses -C cache,quad ./stream_d >> stream_cache; done
# Flat mode, DDR
for i in 8 16 32 64 128 256; do OMP_NUM_THREADS=$i srun --reservation=knl --account=courses -C flat,quad numactl ./stream_d >> stream_flat_ddr; done
# Flat mode, MCDRAM
for i in 8 16 32 64 128 256; do OMP_NUM_THREADS=$i srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d >> stream_flat_mcdram; done

# Part 2
# Cache mode
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_8 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9_2 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C cache,quad ./stream_d_n_9_3 >> ddr
# Flat mode, DDR
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_8 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9_2 >> ddr
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad ./stream_d_n_9_3 >> ddr
# Flat mode, MCDRAM
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_8 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9_2 >> mcdram
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl --membind=1 ./stream_d_n_9_3 >> mcdram
# Flat mode, Preferred MCDRAM
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_8 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9_2 >> mcdram_p
OMP_NUM_THREADS=256 srun --reservation=knl --account=courses -C flat,quad numactl -p 1 ./stream_d_n_9_3 >> mcdram_p
