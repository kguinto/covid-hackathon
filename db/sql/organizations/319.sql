
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
      'SANA Wellness and Health',
      '2310 SW Military Dr #402
San Antonio, TX 78224',
      'San Antonio ',
      'TX',
      'Mailing',
      'Yes',
      '29.354344',
      '-98.5314431'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SANA Wellness and Health'
        AND o.latitude = '29.354344'
        AND o.longitude = '-98.5314431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'SANA Wellness and Health'
        AND o.latitude = '29.354344'
        AND o.longitude = '-98.5314431'));

COMMIT;
