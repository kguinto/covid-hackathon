
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
      'Mammoth Hospital',
      '85 Sierra Park Rd
Mammoth Lakes, CA 93546',
      'Mammoth Lakes',
      'CA',
      '',
      'Yes',
      '37.6441165',
      '-118.9635535'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mammoth Hospital'
        AND o.latitude = '37.6441165'
        AND o.longitude = '-118.9635535'));

COMMIT;
