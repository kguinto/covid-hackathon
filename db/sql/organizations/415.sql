
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
      'Melrose Wakefield Hospital',
      '585 Lebanon St
Melrose, MA 02176',
      'Melrose',
      'MA',
      'Unsure',
      'No',
      '42.4604103',
      '-71.0610124'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disposable rain ponchos',
    (SELECT id FROM organizations o
      WHERE o.name = 'Melrose Wakefield Hospital'
        AND o.latitude = '42.4604103'
        AND o.longitude = '-71.0610124'));

COMMIT;
