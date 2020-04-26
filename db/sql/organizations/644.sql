
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
      'Northeast Louisiana Cancer Institute',
      '411 Calypso St
Monroe, LA 71201',
      'Monroe',
      'LA',
      'First floor; attention James Adams',
      'Yes',
      '32.4994895',
      '-92.1122636'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeast Louisiana Cancer Institute'
        AND o.latitude = '32.4994895'
        AND o.longitude = '-92.1122636'));

COMMIT;
