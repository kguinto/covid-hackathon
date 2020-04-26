
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
      'OSI Physical Therapy',
      '146 Lake St N #200
Forest Lake, MN 55025',
      'Forest Lake',
      'MN',
      'ATTN: Derek Scheevel or drop off by the entrance to the suite if door isn''t unlocked',
      'Yes',
      '45.2811037',
      '-92.9849586'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OSI Physical Therapy'
        AND o.latitude = '45.2811037'
        AND o.longitude = '-92.9849586'));

COMMIT;
