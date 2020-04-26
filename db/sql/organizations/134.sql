
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
      'Overlake Hospital',
      '1231 116th Ave NE #25
Bellevue, WA 98004',
      'Bellevue',
      'WA',
      'If you have items on the list above that you wish to donate, please call the Overlake Foundation at 425.688.5525. You will be directed to drive up to the Starbucks entrance on Swistak Drive on the Overlake campus and call the Foundation number (425.688.5525) from your car. Foundation staff will meet you there to take your donation. ',
      'No',
      '47.6210873',
      '-122.1860501'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Hospital'
        AND o.latitude = '47.6210873'
        AND o.longitude = '-122.1860501'));

COMMIT;
