
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
      'Broadview Multi-Care Center',
      '5520 Broadview Rd
Parma, OH 44134',
      'Parma',
      'OH',
      'front door 8-5pm',
      'Yes',
      '41.4115536',
      '-81.6941791'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broadview Multi-Care Center'
        AND o.latitude = '41.4115536'
        AND o.longitude = '-81.6941791'));

COMMIT;
