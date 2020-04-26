
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
      'Broward Health - Imperial Point Hospital',
      '1709 Coral Gardens Drive
Wilton Manors, FL 33334',
      'Wilton Manors',
      'FL',
      'Residental address. Mail to my home - ICU NURSE will distribute on unit',
      '',
      '26.1645',
      '-80.123993'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broward Health - Imperial Point Hospital'
        AND o.latitude = '26.1645'
        AND o.longitude = '-80.123993'));

COMMIT;
