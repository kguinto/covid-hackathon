
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
      'Joseph''s House',
      '1730 Lanier Pl NW
Washington, DC 20009',
      'Washington',
      'DC',
      'Contact Liz at liz@josephshouse.org or 802-777-2694',
      'No',
      '38.9249341',
      '-77.0410983'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joseph''s House'
        AND o.latitude = '38.9249341'
        AND o.longitude = '-77.0410983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joseph''s House'
        AND o.latitude = '38.9249341'
        AND o.longitude = '-77.0410983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joseph''s House'
        AND o.latitude = '38.9249341'
        AND o.longitude = '-77.0410983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joseph''s House'
        AND o.latitude = '38.9249341'
        AND o.longitude = '-77.0410983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('rubbing alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'Joseph''s House'
        AND o.latitude = '38.9249341'
        AND o.longitude = '-77.0410983'));

COMMIT;
