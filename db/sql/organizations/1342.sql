
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
      'Arbor Place Assisted Living for Seniors',
      '17 Louie Ave
Lodi, CA 95240',
      'Lodi',
      'CA',
      'Drop off front door we will pick up from there',
      'Yes',
      '38.1444493',
      '-121.2726061'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arbor Place Assisted Living for Seniors'
        AND o.latitude = '38.1444493'
        AND o.longitude = '-121.2726061'));

COMMIT;
