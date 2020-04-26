
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
      'Brigham and Womens Faulkner Hospital',
      '1153 Centre St
Boston, MA 02130',
      'Boston',
      'MA',
      'Dropoffs, Attn: Necole, special pathogens unit 7N. | Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx',
      'No',
      '42.3016411',
      '-71.1287817'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brigham and Womens Faulkner Hospital'
        AND o.latitude = '42.3016411'
        AND o.longitude = '-71.1287817'));

COMMIT;
