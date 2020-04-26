
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
      'Heartland Hospice',
      '1385 Chews Landing Rd
Clementon, NJ 08021',
      'Laure springs',
      'NJ',
      'Drop off at office ',
      'Yes',
      '39.8242539',
      '-75.0463754'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartland Hospice'
        AND o.latitude = '39.8242539'
        AND o.longitude = '-75.0463754'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartland Hospice'
        AND o.latitude = '39.8242539'
        AND o.longitude = '-75.0463754'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartland Hospice'
        AND o.latitude = '39.8242539'
        AND o.longitude = '-75.0463754'));

COMMIT;
