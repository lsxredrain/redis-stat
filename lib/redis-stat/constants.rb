class RedisStat
  DEFAULT_TERM_WIDTH    = 180
  DEFAULT_TERM_HEIGHT   = 25
  DEFAULT_SERVER_PORT   = 63790
  DEFAULT_REDIS_TIMEOUT = 30

  NUM_RETRIES = 5

  MEASURES = {
    :static => [
      :redis_version,
      :process_id,
      :uptime_in_seconds,
      :uptime_in_days,
      :role,
      :connected_slaves,
      :aof_enabled,
    ],
    :default => [
      :at,
      :used_cpu_user,
      :used_cpu_sys,
      :connected_clients,
      :blocked_clients,
      :used_memory,
      :used_memory_rss,
      :keys,
      :total_commands_processed_per_second,
      :expired_keys_per_second,
      :evicted_keys_per_second,
      :keyspace_hits_per_second,
      :keyspace_misses_per_second,
      :aof_current_size,
      :pubsub_channels,
    ],
    :verbose => [
      :at,
      :used_cpu_user,
      :used_cpu_sys,
      :connected_clients,
      :blocked_clients,
      :used_memory,
      :used_memory_rss,
      :mem_fragmentation_ratio,
      :keys,
      :total_commands_processed_per_second,
      :total_commands_processed,
      :expired_keys_per_second,
      :expired_keys,
      :evicted_keys_per_second,
      :evicted_keys,
      :keyspace_hits_per_second,
      :keyspace_hits,
      :keyspace_misses_per_second,
      :keyspace_misses,
      :aof_current_size,
      :aof_base_size,
      :changes_since_last_save,
      :pubsub_channels,
      :pubsub_patterns,
    ]
  }

  COLORS = {
    :at                                  => [:bold],
    :used_cpu_user                       => [:yellow, :bold],
    :used_cpu_sys                        => [:yellow],
    :connected_clients                   => [:cyan, :bold],
    :blocked_clients                     => [:cyan, :bold],
    :used_memory                         => [:green],
    :used_memory_rss                     => [:green],
    :mem_fragmentation_ratio             => [:green],
    :keys                                => [:bold],
    :total_commands_processed            => [:blue, :bold],
    :total_commands_processed_per_second => [:blue, :bold],
    :expired_keys                        => [:red],
    :expired_keys_per_second             => [:red],
    :evicted_keys                        => [:red, :bold],
    :evicted_keys_per_second             => [:red, :bold],
    :keyspace_hits                       => [:magenta, :bold],
    :keyspace_hits_per_second            => [:magenta, :bold],
    :keyspace_misses                     => [:magenta],
    :keyspace_misses_per_second          => [:magenta],
    :aof_current_size                    => [:cyan],
    :aof_base_size                       => [:cyan],
    :changes_since_last_save             => [:green, :bold],
    :pubsub_channels                     => [:cyan, :bold],
    :pubsub_patterns                     => [:cyan, :bold],
  }

  LABELS = {
    :at                                  => 'time',
    :used_cpu_user                       => 'us',
    :used_cpu_sys                        => 'sy',
    :connected_clients                   => 'cl',
    :blocked_clients                     => 'bcl',
    :used_memory                         => 'mem',
    :used_memory_rss                     => 'rss',
    :mem_fragmentation_ratio             => 'frag',
    :total_commands_processed            => 'cmd',
    :total_commands_processed_per_second => 'cmd/s',
    :expired_keys                        => 'exp',
    :expired_keys_per_second             => 'exp/s',
    :evicted_keys                        => 'evt',
    :evicted_keys_per_second             => 'evt/s',
    :keys                                => 'keys',
    :keyspace_hits                       => 'hit',
    :keyspace_hits_per_second            => 'hit/s',
    :keyspace_misses                     => 'mis',
    :keyspace_misses_per_second          => 'mis/s',
    :aof_current_size                    => 'aofcs',
    :aof_base_size                       => 'aofbs',
    :changes_since_last_save             => 'chsv',
    :pubsub_channels                     => 'psch',
    :pubsub_patterns                     => 'psp',
  }
end

