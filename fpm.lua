--
-- gfortran compatibility
--
-- FAIL
-- 4.9.4
-- 5.4.0
-- 6.4.0
--
-- WORKS
-- 7.3.0
-- 8.5.0
-- 9.4.0
-- 10.3.0
-- 11.2.0
-- 12.0.1
--

if fpm.fc:find("gfortran") then
    --
    -- TODO: move this to `fpm.link_flags`
    --
    if not fpm.fflags:find("-static") then
        fpm.add_fflags("-static")
    end
end
