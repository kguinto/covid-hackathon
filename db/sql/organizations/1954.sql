
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
      'Saint Clare''s Denville',
      '25 Pocono Rd
Denville, NJ',
      'Denville',
      'NJ',
      'At hospital',
      'Yes',
      '40.894894',
      '-74.4654098'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Denville'
        AND o.latitude = '40.894894'
        AND o.longitude = '-74.4654098'));

COMMIT;
