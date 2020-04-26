
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
      'Four Corners Docs Durango Colorado',
      '1874 W 2nd Ave
Durango, CO 81301',
      'Durango',
      'CO',
      'Contact Phil 8083498798',
      'Yes',
      '37.2843194',
      '-107.8781722'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Four Corners Docs Durango Colorado'
        AND o.latitude = '37.2843194'
        AND o.longitude = '-107.8781722'));

COMMIT;
