
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
      'Coalition of Orange County Community Health Centers',
      '515 Cabrillo Park Dr #225
Santa Ana, CA 92701',
      'Santa Ana',
      'CA',
      'Call to arrange delivery or drop off',
      'No',
      '33.7498638',
      '-117.8392936'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coalition of Orange County Community Health Centers'
        AND o.latitude = '33.7498638'
        AND o.longitude = '-117.8392936'));

COMMIT;
