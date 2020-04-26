
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
      'Triven Health',
      '109 Commerce Park Dr
Westerville, OH 43082',
      'Columbus',
      'OH',
      'home address: 983 Clubview Blvd S',
      'Yes',
      '40.1389662',
      '-82.9252388'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Triven Health'
        AND o.latitude = '40.1389662'
        AND o.longitude = '-82.9252388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Triven Health'
        AND o.latitude = '40.1389662'
        AND o.longitude = '-82.9252388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Triven Health'
        AND o.latitude = '40.1389662'
        AND o.longitude = '-82.9252388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Triven Health'
        AND o.latitude = '40.1389662'
        AND o.longitude = '-82.9252388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Triven Health'
        AND o.latitude = '40.1389662'
        AND o.longitude = '-82.9252388'));

COMMIT;
