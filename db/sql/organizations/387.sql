
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
      'Kaiser Permanente - Roseville',
      '1600 Eureka Rd
Roseville, CA 95661',
      'Roseville',
      'CA',
      'Front entrance, security desk',
      'Yes',
      '38.7454773',
      '-121.2487405'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Roseville'
        AND o.latitude = '38.7454773'
        AND o.longitude = '-121.2487405'));

COMMIT;
