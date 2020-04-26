
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
      'Dr. Marian Mele- Health Coaching',
      '15 Charles St
New York, NY 10014',
      'ny',
      'NY',
      'mail to address above please',
      'Yes',
      '40.7352797',
      '-74.0012674'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Marian Mele- Health Coaching'
        AND o.latitude = '40.7352797'
        AND o.longitude = '-74.0012674'));

COMMIT;
