
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
      'Jefferson Family Physicians',
      '150 W Price Rd
Dandridge, TN 37725',
      'Dandridge',
      'TN',
      'Drop off at clinic - call 865-475-6161 ',
      'Yes',
      '36.04491',
      '-83.4620427'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand-Sewn Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Family Physicians'
        AND o.latitude = '36.04491'
        AND o.longitude = '-83.4620427'));

COMMIT;
