
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
      'Providence Little Company of Mary San Pedro',
      '1300 W 7th St
San Pedro, CA 90732',
      'San Pedro',
      'CA',
      'Bring to Emergency Department',
      'Yes',
      '33.7382583',
      '-118.305098'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Little Company of Mary San Pedro'
        AND o.latitude = '33.7382583'
        AND o.longitude = '-118.305098'));

COMMIT;
