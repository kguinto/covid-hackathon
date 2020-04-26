
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
      'Palmeira Home + Health',
      '3763 Howard Hughes Pkwy #150
Las Vegas, NV 89169',
      'Las Vegas',
      'NV',
      'Curbside',
      'Yes',
      '36.1207905',
      '-115.1583917'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmeira Home + Health'
        AND o.latitude = '36.1207905'
        AND o.longitude = '-115.1583917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmeira Home + Health'
        AND o.latitude = '36.1207905'
        AND o.longitude = '-115.1583917'));

COMMIT;
