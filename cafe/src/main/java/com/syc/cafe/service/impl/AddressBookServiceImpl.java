package com.syc.cafe.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.syc.cafe.entity.AddressBook;
import com.syc.cafe.mapper.AddressBookMapper;
import com.syc.cafe.service.AddressBookService;
import org.springframework.stereotype.Service;

@Service
public class AddressBookServiceImpl extends ServiceImpl<AddressBookMapper, AddressBook> implements AddressBookService {

}
