package com.ravi.service;

import java.time.LocalDateTime;

import org.springframework.stereotype.Service;

@Service
public class WishServer implements IWishService {

	@Override
	public String wishMessage() {
		LocalDateTime ltd=LocalDateTime.now();
		int hour=ltd.getHour();
		if(hour<=12)
			return "Good Moring";
		else if(hour<=16)
			return "Good AfterNoon";
		else if(hour<=20)
			return "Good Evening";
		else
			return "Good Night";
	}

}
