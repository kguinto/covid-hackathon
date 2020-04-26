
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
      'Newton-Wellesley Hospital',
      '2014 Washington St
Newton, MA 02462',
      'Newton',
      'MA',
      'Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx',
      'Unsure',
      '42.3306338',
      '-71.2464373'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newton-Wellesley Hospital'
        AND o.latitude = '42.3306338'
        AND o.longitude = '-71.2464373'));

COMMIT;
