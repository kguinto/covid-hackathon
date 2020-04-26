
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
      'John Muir Health - Walnut Creek',
      '1601 Ygnacio Valley Rd
Walnut Creek, CA 94598',
      'Walnut Creek',
      'CA',
      'Main Entrance: John Muir Health ',
      'Yes',
      '37.9128769',
      '-122.0409498'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'John Muir Health - Walnut Creek'
        AND o.latitude = '37.9128769'
        AND o.longitude = '-122.0409498'));

COMMIT;
