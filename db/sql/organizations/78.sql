
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
      'John Muir Concord',
      '2540 East St
Cardiovascular Institute Registration Desk
Concord, CA 94520',
      'Concord',
      'CA',
      'Drop at the Cardiovascular Institute Registration Desk',
      'No',
      '37.9827647',
      '-122.0333245'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Concord'
        AND o.latitude = '37.9827647'
        AND o.longitude = '-122.0333245'));

COMMIT;
