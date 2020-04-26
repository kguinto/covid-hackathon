
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
      'North Georgia Hospital System Barrow Co. Campus',
      '316 N Broad St, c/o Laboratory Dept
Winder, GA 30680',
      'Winder',
      'GA',
      'Ship to my home or facility is fine..just as long as the laboratory dept receives them. Thank you! Thank you! Thank you!',
      'Unsure',
      '34.0081396',
      '-83.7077726'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Georgia Hospital System Barrow Co. Campus'
        AND o.latitude = '34.0081396'
        AND o.longitude = '-83.7077726'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95 fit and face masks.',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Georgia Hospital System Barrow Co. Campus'
        AND o.latitude = '34.0081396'
        AND o.longitude = '-83.7077726'));

COMMIT;
