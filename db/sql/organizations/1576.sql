
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
      'S.T.A.R. - Stand Together and Recover Centers, Inc.',
      '2502 E Washington St
Phoenix, AZ 85034',
      'Phoenix',
      'AZ',
      'We are open 8-4 PM Monday through Friday.',
      'Open shipping boxes yes, but not opened individual boxes',
      '33.4485876',
      '-112.027563'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'S.T.A.R. - Stand Together and Recover Centers, Inc.'
        AND o.latitude = '33.4485876'
        AND o.longitude = '-112.027563'));

COMMIT;
