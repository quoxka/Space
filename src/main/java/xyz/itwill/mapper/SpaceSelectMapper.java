package xyz.itwill.mapper;


import java.util.List;

import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;

public interface SpaceSelectMapper {

    Space selectSpaceBySNo(String hId, int sNo);
    List<SpaceHost> selectSpaceHost(String hId, int sNo);
    
    Space selectSpaceBySnoTest(int sNo);
}
