
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
      'University of Rochester',
      '601 Elmwood Ave
Rochester, NY 14642',
      'Rochester',
      'NY',
      'curbside pickup, call 585-455-8635',
      'Yes',
      '43.1229458',
      '-77.6235808'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Rochester'
        AND o.latitude = '43.1229458'
        AND o.longitude = '-77.6235808'));

COMMIT;
