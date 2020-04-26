
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
      'Hands On Medicine ',
      '5311 N Vancouver Ave
Portland, OR 97217',
      'Portland',
      'OR',
      'If during clinic hours, to clinic. 7-5 M-F.',
      'Yes',
      '45.5618342',
      '-122.6688944'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hands On Medicine '
        AND o.latitude = '45.5618342'
        AND o.longitude = '-122.6688944'));

COMMIT;
