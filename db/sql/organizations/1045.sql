
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
      'Adventist Health Tillamook',
      '1000 3rd St
Tillamook, OR 97141',
      'Tillamook',
      'OR',
      '',
      'Yes',
      '45.4565613',
      '-123.8545494'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Tillamook'
        AND o.latitude = '45.4565613'
        AND o.longitude = '-123.8545494'));

COMMIT;
