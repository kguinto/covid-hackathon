
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
      'Physician R. Shah, Internal Medicine Services, PLLC',
      '30-11 21st St #5D
Queens, NY 11102',
      'Astoria',
      'NY',
      'ATTN: Dr. Rita Shah (please leave by the mailboxes in the lobby of the building)',
      'Yes',
      '40.7693093',
      '-73.9279619'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physician R. Shah, Internal Medicine Services, PLLC'
        AND o.latitude = '40.7693093'
        AND o.longitude = '-73.9279619'));

COMMIT;
