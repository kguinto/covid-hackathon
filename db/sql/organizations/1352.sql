
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
      'La Jolla Nursing and Rehabilitation Center',
      '2552 Torrey Pines Rd
La Jolla, CA 92037',
      'La Jolla',
      'CA',
      'Attn: Administrator',
      'Yes',
      '32.8513226',
      '-117.2486179'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Jolla Nursing and Rehabilitation Center'
        AND o.latitude = '32.8513226'
        AND o.longitude = '-117.2486179'));

COMMIT;
