
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
      'Glendale Adventist Hospital ',
      '15031 Germain St
Mission Hills, CA 91345',
      'MISSION HILLS',
      'CA',
      '15031 GERMAIN ST',
      'No',
      '34.2622793',
      '-118.4598209'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glendale Adventist Hospital '
        AND o.latitude = '34.2622793'
        AND o.longitude = '-118.4598209'));

COMMIT;
