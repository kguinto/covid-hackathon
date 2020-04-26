
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
      'St. Benedict''s Nursing and Rehab Center',
      '6930 W Touhy Ave
Niles, IL 60714',
      'Niles ',
      'IL',
      '',
      'Yes',
      '42.0133924',
      '-87.8002115'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Benedict''s Nursing and Rehab Center'
        AND o.latitude = '42.0133924'
        AND o.longitude = '-87.8002115'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Benedict''s Nursing and Rehab Center'
        AND o.latitude = '42.0133924'
        AND o.longitude = '-87.8002115'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Benedict''s Nursing and Rehab Center'
        AND o.latitude = '42.0133924'
        AND o.longitude = '-87.8002115'));

COMMIT;
