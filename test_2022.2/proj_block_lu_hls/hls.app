<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="spmm" name="proj_block_lu_hls">
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../tb.cpp" sc="0" tb="1" cflags=" -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="core.cpp" sc="0" tb="false" cflags="-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB" csimflags="" blackbox="false"/>
        <file name="pe.cpp" sc="0" tb="false" cflags="-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB" csimflags="" blackbox="false"/>
        <file name="rcache.cpp" sc="0" tb="false" cflags="-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB" csimflags="" blackbox="false"/>
        <file name="util.cpp" sc="0" tb="false" cflags="-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB" csimflags="" blackbox="false"/>
        <file name="vccache.cpp" sc="0" tb="false" cflags="-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

