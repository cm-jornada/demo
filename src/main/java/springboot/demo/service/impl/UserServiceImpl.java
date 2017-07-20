/**
 * 
 */
package springboot.demo.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springboot.demo.dmo.User;
import springboot.demo.mapper.UserMapper;
import springboot.demo.service.UserService;

/**
 * @author jiang
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
    private UserMapper userMapper;
	
	@Override
	public int insert(User user) {
		user.setEnable("1");
		user.setId(UUID.randomUUID().toString().replace("-", ""));
		return userMapper.insert(user);
	}

	@Override
	public void update(User user) {
		userMapper.update(user);
	}

	@Override
	public void delete(User user) {
		userMapper.delete(user);
		
	}

	@Override
	public List<User> find(User user) {
		return userMapper.find(user);
	}

	@Override
	public User findByUserName(String userName) {
		return userMapper.findByUserName(userName);
	}

	@Override
	public User findById(String id) {
		return userMapper.findById(id);
	}

}
