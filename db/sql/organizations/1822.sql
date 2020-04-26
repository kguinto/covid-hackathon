
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
      'Cathedral Square Assisted Living ',
      '3 Cathedral Square
Burlington, VT 05401',
      'Burlington',
      'VT',
      'Curbside',
      'No',
      '44.4796629',
      '-73.2178031'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cathedral Square Assisted Living '
        AND o.latitude = '44.4796629'
        AND o.longitude = '-73.2178031'));

COMMIT;
