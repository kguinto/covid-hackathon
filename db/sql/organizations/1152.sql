
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
      'UK Healthcare',
      '1000 S Limestone
Lexington, KY 40506',
      'Lexington',
      'KY',
      '',
      'Yes',
      '38.031102',
      '-84.5076352'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UK Healthcare'
        AND o.latitude = '38.031102'
        AND o.longitude = '-84.5076352'));

COMMIT;
