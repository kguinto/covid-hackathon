
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
      'University of South Florida Child Protection Team',
      '12901 Bruce B. Downs Blvd.
Tampa, FL 33612',
      'Tampa',
      'FL',
      'Contact Carol Lilly at cmlilly@usf.edu or at 813-841-7376',
      'Unsure',
      '28.0638505',
      '-82.4244484'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of South Florida Child Protection Team'
        AND o.latitude = '28.0638505'
        AND o.longitude = '-82.4244484'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of South Florida Child Protection Team'
        AND o.latitude = '28.0638505'
        AND o.longitude = '-82.4244484'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of South Florida Child Protection Team'
        AND o.latitude = '28.0638505'
        AND o.longitude = '-82.4244484'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of South Florida Child Protection Team'
        AND o.latitude = '28.0638505'
        AND o.longitude = '-82.4244484'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of South Florida Child Protection Team'
        AND o.latitude = '28.0638505'
        AND o.longitude = '-82.4244484'));

COMMIT;
