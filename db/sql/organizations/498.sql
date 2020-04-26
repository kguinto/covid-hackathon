
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
      'Saint Clare''s Dover Hospital',
      '400 W Blackwell St
Dover, NJ 07801',
      'Dover',
      'NJ',
      'Drop off outside ER walk-in doors in a box, clearly marked as "donation"',
      'Unsure',
      '40.8848548',
      '-74.5759522'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Handmade sewn masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Clare''s Dover Hospital'
        AND o.latitude = '40.8848548'
        AND o.longitude = '-74.5759522'));

COMMIT;
