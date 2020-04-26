
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
      'Merritt Manor',
      '604 East Merritt Ave
Tulare, CA 93274',
      'Tulare ',
      'CA',
      'Front door',
      'Yes',
      '36.222462',
      '-119.3392362'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merritt Manor'
        AND o.latitude = '36.222462'
        AND o.longitude = '-119.3392362'));

COMMIT;
