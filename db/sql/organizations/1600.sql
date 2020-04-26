
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
      'Good Samaritan hospital',
      '2425 Samaritan Dr
San Jose, CA 95124',
      'San Jose',
      'CA',
      'By the main entrance, security guard will take them',
      'No',
      '37.2517475',
      '-121.9466889'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan hospital'
        AND o.latitude = '37.2517475'
        AND o.longitude = '-121.9466889'));

COMMIT;
