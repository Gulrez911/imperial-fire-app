package com.gul.repositoy;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.gul.modal.OtpAuth;

@Transactional
public interface OtpAuthRepository extends JpaRepository<OtpAuth, Long> {

	public OtpAuth findByUserEmailAndOtp(String userEmail, String otp);

	@Query("SELECT c FROM OtpAuth c WHERE c.userEmail=:userEmail")
	public OtpAuth findByUserEmail(@Param("userEmail") String userEmail);

	@Modifying
	@Query(value = "DELETE FROM OtpAuth q WHERE q.userEmail=:userEmail", nativeQuery = true)
	public Optional<OtpAuth> deleteByUserEmail(@Param("userEmail") String userEmail);

}
