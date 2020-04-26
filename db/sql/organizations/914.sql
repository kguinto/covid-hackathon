
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
      'Summa Barberton Hospital',
      '155 5th Street NE
Barberton, OH 44203',
      'Barberton',
      'OH',
      'Main entrance',
      'Yes',
      '41.0148045',
      '-81.5894562'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Barberton Hospital'
        AND o.latitude = '41.0148045'
        AND o.longitude = '-81.5894562'));

COMMIT;
