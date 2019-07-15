package com.yootk.oa.dao;

import com.yootk.dubbo.vo.Album;

public interface AlbumMapper {
    int deleteByPrimaryKey(Long albid);

    int insert(Album record);

    int insertSelective(Album record);

    Album selectByPrimaryKey(Long albid);

    int updateByPrimaryKeySelective(Album record);

    int updateByPrimaryKey(Album record);
}