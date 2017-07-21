package springboot.demo.mapper;

import java.util.List;

import springboot.demo.dmo.Resource;

public interface ResourceMapper {

    public List<Resource> loadAll();

}
