
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Gwinnett Pediatrics and Adolescent Medicine',
      '3855 Pleasant Hill Rd., Suite 210,
Duluth, GA 30096',
      'Duluth',
      'GA',
      'We can pickup curbside between 8:15-5pm or you can mail it, ATTn: Dr. Lisa Roberts',
      'Yes',
      '33.9990815',
      '-84.1630503'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gwinnett Pediatrics and Adolescent Medicine'
        AND o.latitude = '33.9990815'
        AND o.longitude = '-84.1630503'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gwinnett Pediatrics and Adolescent Medicine'
        AND o.latitude = '33.9990815'
        AND o.longitude = '-84.1630503'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gwinnett Pediatrics and Adolescent Medicine'
        AND o.latitude = '33.9990815'
        AND o.longitude = '-84.1630503'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gwinnett Pediatrics and Adolescent Medicine'
        AND o.latitude = '33.9990815'
        AND o.longitude = '-84.1630503'));

COMMIT;
