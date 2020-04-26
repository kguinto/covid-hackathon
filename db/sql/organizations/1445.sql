
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
      'Katahdin Valley Health Center',
      '529 S Patten Rd
Patten, ME 04765',
      'Patten',
      'ME',
      '529 S. Patten Rd',
      '',
      '45.9586967',
      '-68.4525914'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katahdin Valley Health Center'
        AND o.latitude = '45.9586967'
        AND o.longitude = '-68.4525914'));

COMMIT;
