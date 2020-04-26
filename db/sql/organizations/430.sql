
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
      'UCSF Benioff Children''s Hospital Oakland',
      '747 52nd Street
Oakland, CA 94609',
      'Oakland',
      'CA',
      'Will be receiving donations 7 days a week, 8 a.m. to 5 p.m. @ Ambassador Desk. More info https://coronavirus.ucsf.edu/help',
      'Masks - can be opened, as long as they have not been used. All other must be unopened pls',
      '37.8371901',
      '-122.2670282'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Benioff Children''s Hospital Oakland'
        AND o.latitude = '37.8371901'
        AND o.longitude = '-122.2670282'));

COMMIT;
