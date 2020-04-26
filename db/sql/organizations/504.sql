
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
      'Our Lady of Lourdes Memorial Hospital',
      '169 Riverside Dr
Binghamton, NY 13905',
      'Binghamton',
      'NY',
      '',
      'Unsure',
      '42.0915013',
      '-75.9362283'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Our Lady of Lourdes Memorial Hospital'
        AND o.latitude = '42.0915013'
        AND o.longitude = '-75.9362283'));

COMMIT;
