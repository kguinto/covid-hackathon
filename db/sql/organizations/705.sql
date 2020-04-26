
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
      'Children''s Hospital of the King''s Daughter',
      '601 Children''s Ln
Norfolk, VA 23507',
      'Norfolk',
      'VA',
      'Emergency Department

OR

2nd floor, ENT dept.  Bring to front desk of hospital and we will come down and pick up',
      'No',
      '36.8621682',
      '-76.3020325'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of the King''s Daughter'
        AND o.latitude = '36.8621682'
        AND o.longitude = '-76.3020325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of the King''s Daughter'
        AND o.latitude = '36.8621682'
        AND o.longitude = '-76.3020325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of the King''s Daughter'
        AND o.latitude = '36.8621682'
        AND o.longitude = '-76.3020325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of the King''s Daughter'
        AND o.latitude = '36.8621682'
        AND o.longitude = '-76.3020325'));

COMMIT;
