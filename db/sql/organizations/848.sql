
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
      'Healthy Living Network, LLC',
      '2365 Iron Point Rd #270
Folsom, CA 95630',
      'Folsom',
      'CA',
      'Mail to: 7860 Olive St, Fair Oaks, CA 95630',
      'Yes',
      '38.6443888',
      '-121.1258531'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('germicides',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthy Living Network, LLC'
        AND o.latitude = '38.6443888'
        AND o.longitude = '-121.1258531'));

COMMIT;
